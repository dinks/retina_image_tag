module RetinaImageHelper

  # Returns an HTML image tag for the +source+. The +source+ can be a full
  # path or a file.
  #
  # ==== Auto Adds
  #
  # It will also add a predefined data-attributes:
  #
  # data-hid -> Signifies that there is a 2X image ready for retina
  #
  # ==== Options
  #
  # You can add HTML attributes using the +options+. The +options+ supports
  # 1 additional key along with the normal 3 keys by image_tag
  # for convenience and conformance:
  #
  # * <tt>:at2x</tt> - Signifies the 2X image used for retina
  #
  def retina_image_tag(source, options={})
    options = options.symbolize_keys

    options[:data] ||= {}

    options[:data][:hid] = true

    options[:data][:at2x] = image_path(options.delete(:at2x)) if options[:at2x]

    image_tag(source, options)
  end
end
