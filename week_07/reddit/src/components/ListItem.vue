<template lang="html">
  <li v-on:click="handleClick">{{reddit.subreddit}} </li>
</template>

<script>

import { eventBus } from '../main.js';

export default {
  name: 'list-item',
  props:['reddit'],
  methods: {
    handleClick(){
      eventBus.$emit('reddit-selected', this.reddit)
    }
  }
}
</script>

<style lang="css" scoped>
</style>
