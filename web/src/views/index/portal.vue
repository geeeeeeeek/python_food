<template>
  <div class="portal">
    <Header />
    <Content />
    <Footer />
  </div>
</template>
<script>
import Header from '/@/views/index/components/header.vue'
import Footer from '/@/views/index/components/footer.vue'
import Content from '/@/views/index/components/content.vue'
import {Modal} from "ant-design-vue";

export default {
  components: {
    Footer,
    Header,
    Content
  },
  data () {
    return {
    }
  },
  mounted() {
    Modal.info({
      title: '欢迎体验',
      content: '使用过程中遇到问题，可以咨询作者：lengqin1024（微信）',
      onOk() {},
    });
  }
}
</script>
<style scoped lang="less">

</style>
