export default {
  rxdb:true
  prototypes:
    RxCollection:(proto) =>
      Object.assign(
        proto
        get:(key)->
            m = await @findByIds([key])
            return m.get key
      )
}


