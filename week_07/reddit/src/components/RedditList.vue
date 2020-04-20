<template lang="html">
  <div 
    <ul>
      <list-item v-for="(reddit, index) in reddits"
      :reddit="reddit" :key="index"></list-item>
    </ul>
  </div>

</template>

<script>
import ListItem from './ListItem.vue';

export default {
  name: 'reddits-list',
  props: ['reddits'],
  components: {
    "list-item": ListItem
  }
}
</script>

<style lang="css" scoped>
#RedditsList {
    background: #eee;
    height: 400px;
    overflow-y: scroll;
    border: 1px solid #ccc;
  }
</style>
