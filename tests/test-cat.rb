require "cat.rb"
require "test/unit"

class TestCat< Test::Unit::TestCase

    # Can we name cats?
    def test_naming()
        cat = Cat.new("joe")
        assert(cat.get_name, "joe")
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

