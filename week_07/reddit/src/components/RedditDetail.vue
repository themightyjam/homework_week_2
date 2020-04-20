<template lang="html">
  <div v-if='reddit'>
    <h3>{{reddit.subreddit}}</h3>
    <p>subreddit: {{scotland.subreddit}}</p>
  </div>
</template>

<script>
import { eventBus } from '../main.js';

export default {
  name: 'reddit-detail',
  props: ['reddit']
}
</script>

<style lang="css" scoped>
</style>
