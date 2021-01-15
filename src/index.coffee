import PluginGet from "./get"
import PluginId from "./id"
import PluginQueryAtomicPatch from "./query.atomicPatch"

export default (addRxPlugin, redis)=>
  addRxPlugin PluginId(redis)
  addRxPlugin PluginQueryAtomicPatch
  addRxPlugin PluginGet
