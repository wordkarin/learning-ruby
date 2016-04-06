require "cat.rb"
require "test/unit"

class TestCat< Test::Unit::TestCase

    # Can we name cats?
    def test_naming()
        joe = Cat.new("joe")
        root = Cat.new("root")
        assert(joe.get_name, "joe")
        assert(root.get_name, "root")
    end

    # Verify that petting produces purring
    def test_purring()
        cat = Cat.new("root")
        assert(!cat.is_purring)
        cat.pet
        assert(cat.is_purring)
    end

    # Verify that cats eat the right things
    def test_eating()
        cat = Cat.new("root")
        assert(cat.will_eat("fish"))
        assert(cat.will_eat("milk"))
        assert(!cat.will_eat("rocks"))
    end

end

