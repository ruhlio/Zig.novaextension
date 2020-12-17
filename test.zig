const std = @import("std");

var y: i32 = add(10, x);
const x: i32 = add(12, 34);

pub fn main() anyerror!void {
	std.log.info("All your codebase are belong to us.", .{});
	wow();
}

fn add(a: i32, b: i32) i32 {
	return a + b;
}

const std = @import("std");
const expect = std.testing.expect;

// hi
fn add(a: i8, b: i8) i8 {
	if (0 == a) {
		return b;
	}
	
	// ok then
	return a + b;
}

const Point2 = packed struct {
	x: f32,
	y: f32,
};

const Vec3 = struct {
	x: f32,
	y: f32,
	z: f32,

	pub fn init(x: f32, y: f32, z: f32) Vec3 {
		return Vec3 {
			.x = x,
			.y = y,
			.z = z,
		};
	}

	pub fn dot(self: Vec3, other: Vec3) f32 {
		return self.x * other.x + self.y * other.y + self.z * other.z;
	}
};

fn LinkedList(comptime T: type) type {
	return struct {
		pub const Node = struct {
			prev: ?*Node,
			next: ?*Node,
			data: T,
		};

		first: ?*Node,
		last:  ?*Node,
		len:   usize,
	};
}

const Number = packed enum(u8) {
	one,
	two,
	three,
};

const Value2 = enum(u32) {
	hundred = 100,
	thousand = 1000,
	million = 1000000,
};

const Suit = enum {
	clubs,
	spades,
	diamonds,
	hearts,

	pub fn isClubs(self: Suit) bool {
		return self == Suit.clubs;
	}
};

const Payload = union {
	int: i64,
	float: f64,
	boolean: bool,
};

const ComplexTypeTag = enum {
	ok,
	not_ok,
};
const ComplexType = union(ComplexTypeTag) {
	ok: u8,
	not_ok: void,
};
