<template>
    <div>
        <button @click="cl">hahha</button>
    </div>
</template>

<script>

    export default {
        name: "demo",
        created() {

        },
        methods:{
            cl(){
                this.request.get("/ping").then(function (res) {
                    console.log(res)
                })
            }
        }
    }
</script>

<style scoped>

</style>