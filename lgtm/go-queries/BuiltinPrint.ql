/**
 * @kind problem
 * @id use-of-builtin-print
 */

import go

from BuiltinFunction p
where p = Builtin::print() or p = Builtin::println()
select p.getACall(), "Don't use built-in function " + p.getName() + "."
