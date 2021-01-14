export default (addRxPlugin, redis)=>
  addRxPlugin {
    rxdb:true
    prototypes:
      RxCollection:(proto) =>
        Object.assign(
          proto
          id:(query)->
            loop
              o = await @findOne({selector:query}).exec()
              if o
                return o
              id = await redis.incr(@name+".id")
              query.id = id
              try
                o = await @insert(query)
              catch err
                if err.code == "COL19" # 插入冲突
                  continue
                else
                  throw err
              return o

        )
  }


