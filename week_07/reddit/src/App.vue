<template>
  <div>
    <h1>Reddit Test</h1>
    <div class="main-container">
      <reddits-list :reddits='reddits'></reddits-list>
      <reddit-detail :reddit='selectedReddit'></reddit-detail>
    </div>
  </div>
</template>

<script>
import RedditsList from './components/RedditList.vue';
import RedditDetail from './components/RedditDetail.vue';
import { eventBus } from './main.js';


export default {
  name: 'app',
  data(){
    return {
      reddits: [],
      selectedReddit: null
    };
  },
  mounted(){
    fetch('https://www.reddit.com/r/scotland.json')
    .then(res => res.json())
    .then(reddits => this.reddits = reddits)

    eventBus.$on('reddit-selected', (reddit) => {
      this.selectedReddit = reddit
    })
  },
  components: {
    "reddits-list": RedditsList,
    "reddit-detail": RedditDetail
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
