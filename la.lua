-- Linear algrebra module
-- Copyright (C) 2006 Marc Lepage

local sqrt = math.sqrt

module(...)

------------------
-- Unary functions
------------------

-- Negation
function neg(u, r)
  if r then
    r[1], r[2], r[3] = -u[1], -u[2], -u[3]
    return r
  else
    return { -u[1], -u[2], -u[3] }
  end
end

-- Normalization
function norm(u, r)
  local u1, u2, u3 = u[1], u[2], u[3]
  local a = sqrt(u1^2 + u2^2 + u3^2)
  if r then
    r[1], r[2], r[3] = u1/a, u2/a, u3/a
    return r
  else
    return { u1/a, u2/a, u3/a }
  end
end

-------------------
-- Binary functions
-------------------

-- Dot product
function dot(u, v)
  return u[1]*v[1] + u[2]*v[2] + u[3]*v[3];
end

-- Vector addition
function add(u, v, r)
  if r then
    r[1], r[2], r[3] = u[1]+v[1], u[2]+v[2], u[3]+v[3]
    return r
  else
    return { u[1]+v[1], u[2]+v[2], u[3]+v[3] }
  end
end

-- Vector subtraction
function sub(u, v, r)
  if r then
    r[1], r[2], r[3] = u[1]-v[1], u[2]-v[2], u[3]-v[3]
    return r
  else
    return { u[1]-v[1], u[2]-v[2], u[3]-v[3] }
  end
end

-- Cross product (right-handed)
function cross(u, v, r)
  local u1, u2, u3 = u[1], u[2], u[3]
  local v1, v2, v3 = v[1], v[2], v[3]
  if r then
    r[1], r[2], r[3] = u2*v3-u3*v2, u3*v1-u1*v3, u1*v2-u2*v1
    return r
  else
    return { u2*v3-u3*v2, u3*v1-u1*v3, u1*v2-u2*v1 }
  end
end

-- Scalar multiplication
function mul(u, a, r)
  if r then
    r[1], r[2], r[3] = u[1]*a, u[2]*a, u[3]*a
    return r
  else
    return { u[1]*a, u[2]*a, u[3]*a }
  end
end

-- Scalar division
function div(u, a, r)
  if r then
    r[1], r[2], r[3] = u[1]/a, u[2]/a, u[3]/a
    return r
  else
    return { u[1]/a, u[2]/a, u[3]/a }
  end
end
