
require_relative 'cache'

require "test/unit"

class TestCache< Test::Unit::TestCase

    def test_basic()
        cache = Cache.new(10)
        cache.put("foo", "bar")
        assert(cache.get("foo") == "bar")
        assert(cache.get("baz") == nil)
    end

    def test_sizing()
        cache = Cache.new(100)
        assert(cache.max_size() == 100)
        assert(cache.size() == 0)

        (1..5).each do |x| cache.put(x, x) end

        assert(cache.size() == 5)
        assert(cache.get(1) == 1)

        (1..1000000).each do |x| cache.put(x, x) end
        assert(cache.size() ==100)
        assert(cache.get(1), nil)
    end

    def test_lru()
        cache = Cache.new(10)
        (1..10).each do |x| cache.put(x, x) end

        (11..200).each do |x|
            cache.get(5)
            cache.put(x, x)
        end

        assert(cache.get(5), 5)
        assert(cache.get(6), nil)

    end


end
