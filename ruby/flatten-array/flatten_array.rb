class FlattenArray

  VERSION = 1

  def self.flatten(array)
    array
        .each_with_object([]) { |el, acc|
          case el
            when nil
              # no op
            when Integer
              acc << el
            when Array
              acc << flatten(el)
            else
              raise RuntimeError
          end
        }
        .flatten
  end

end