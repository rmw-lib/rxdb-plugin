export default {
  rxdb:true
  prototypes:
    RxQuery:(proto) =>
      Object.assign(
        proto
        atomicPatch:(o)->
          li = await @exec()

          if Array.isArray li
            todo = []
            for i from li
              todo.push i.atomicPatch o
            return Promise.all todo
          return li.atomicPatch(o)
      )
}


