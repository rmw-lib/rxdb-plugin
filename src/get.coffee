export default {
  rxdb:true
  prototypes:
    RxCollection:(proto) =>
      Object.assign(
        proto
        get:(key)->
          t = typeof(key)

          if t == 'string'
            m = await @findByIds([key])
            return m.get key

          return await @findOne(selector:key).exec()

      )
}


