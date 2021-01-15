export default (redis)=>
  {
    rxdb:true
    prototypes:
      RxQuery:(proto) =>
        Object.assign(
          proto
          atomicPatch:(o)->
            todo = []
            for i from await @exec()
              todo.push i.atomicPatch o
            Promise.all todo
        )
  }


