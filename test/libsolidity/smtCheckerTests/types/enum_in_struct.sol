pragma experimental SMTChecker;

contract C
{
	enum D { Left, Right }
	struct S { uint x; D d; }
	function f(S memory s) internal pure {
		s.d = D.Left;
		assert(s.d == D.Left);
	}
}
// ----
// Warning: (109-119): Assertion checker does not yet support the type of this variable.
// Warning: (139-151): Assertion checker does not yet implement such assignments.
// Warning: (155-176): Assertion violation happens here
