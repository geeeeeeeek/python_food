<template>
 
</template>

<script setup lang="ts">
  import { FormInstance, message } from 'ant-design-vue';
  import { createApi, listApi, updateApi, deleteApi, cancelApi } from '/@/api/admin/order';
  import {getFormatTime} from "/@/utils";


  const columns = reactive([
    {
      title: '序号',
      dataIndex: 'index',
      key: 'index',
      align: 'center'
    },
    {
      title: '用户',
      dataIndex: 'username',
      key: 'username',
      align: 'center'
    },
    {
      title: '菜品列表',
      dataIndex: 'caipinText',
      key: 'caipinText',
    },
    {
      title: '状态',
      dataIndex: 'status',
      key: 'status',
      align: 'center',
      scopedSlots: {customRender: 'status'}
    },
    {
      title: '姓名',
      dataIndex: 'receiver_name',
      key: 'receiver_name',
      align: 'center',
    },
    {
      title: '地址',
      dataIndex: 'receiver_address',
      key: 'receiver_address',
      align: 'center',
    },
    {
      title: '电话',
      dataIndex: 'receiver_phone',
      key: 'receiver_phone',
      align: 'center',
    },
    {
      title: '订单时间',
      dataIndex: 'order_time',
      key: 'order_time',
      align: 'center',
    },
    {
      title: '操作',
      dataIndex: 'action',
      key: 'operation',
      align: 'center',
      fixed: 'right',
      width: 120,
    },
  ]);

  // 页面数据
  const data = reactive({
    tagList: [],
    loading: false,
    keyword: '',
    selectedRowKeys: [] as any[],
    pageSize: 10,
    page: 1,
  });


  onMounted(() => {
    getDataList();
  });

  const getDataList = () => {
    data.loading = true;
    listApi({
      keyword: data.keyword,
    })
      .then((res) => {
        data.loading = false;
        console.log(res);
        res.data.forEach((item: any, index: any) => {
          item.index = index + 1;
          let caipinText = ''
          let obj = JSON.parse(item.gwc)
          item.gwcData = obj['gwc']
          item.gwcData.forEach(item => {
            caipinText += item.title + '×'+ item.count + "\n"
          })
          item.caipinText = caipinText;
        });
        data.tagList = res.data;
      })
      .catch((err) => {
        data.loading = false;
        console.log(err);
      });
  };


  const rowSelection = ref({
    onChange: (selectedRowKeys: (string | number)[], selectedRows: DataItem[]) => {
      console.log(`selectedRowKeys: ${selectedRowKeys}`, 'selectedRows: ', selectedRows);
      data.selectedRowKeys = selectedRowKeys;
    },
  });

  const confirmCancel = (record: any) => {
    cancelApi({ id: record.id })
        .then((res) => {
          getDataList();
          message.success('取消成功')
        })
        .catch((err) => {
          message.error(err.msg || '操作失败');
        });
  };

  const confirmDelete = (record: any) => {
    console.log('delete', record);
    deleteApi({ ids: record.id })
      .then((res) => {
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
  };

  const handleAdd = () => {
    // createApi({
    //   thingId: 1,
    //   userId: 2,
    //   count: 1
    // }).then(res => {
    //   getDataList()
    // }).catch(err => {
    //
    // })
  }

  const handleBatchDelete = () => {
    console.log(data.selectedRowKeys);
    if (data.selectedRowKeys.length <= 0) {
      console.log('hello');
      message.warn('请勾选删除项');
      return;
    }
    deleteApi({ ids: data.selectedRowKeys.join(',') })
      .then((res) => {
        message.success('删除成功');
        data.selectedRowKeys = [];
        getDataList();
      })
      .catch((err) => {
        message.error(err.msg || '操作失败');
      });
  };

</script>

<style scoped lang="less">
  .page-view {
    min-height: 100%;
    background: #fff;
    padding: 24px;
    display: flex;
    flex-direction: column;
  }

  .table-operations {
    margin-bottom: 16px;
    text-align: right;
  }

  .table-operations > button {
    margin-right: 8px;
  }
</style>
