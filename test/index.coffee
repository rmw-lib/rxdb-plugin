#!/usr/bin/env coffee
import rxdb-plugin from '@rmw/rxdb-plugin'
# import {rxdb-plugin as Xxx} from '@rmw/rxdb-plugin'
import test from 'tape-catch'

test 'rxdb-plugin', (t)=>
  t.equal rxdb-plugin(1,2),3
  # t.deepEqual Xxx([1],[2]),[3]
  t.end()
