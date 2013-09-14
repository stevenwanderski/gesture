namespace :images do

  namespace :veronica do

    task :clothed => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/Veronica_Small/clothed"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "female",
          nude: false,
          image: File.open(File.join(dir, item))
        )
      end
    end

    task :nude => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/Veronica_Small/nude"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "female",
          nude: true,
          image: File.open(File.join(dir, item))
        )
      end
    end

  end

  namespace :aaron do

    task :clothed => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/aaron_small/clothed"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "male",
          nude: false,
          image: File.open(File.join(dir, item))
        )
      end
    end

    task :nude => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/aaron_small/nude"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "male",
          nude: true,
          image: File.open(File.join(dir, item))
        )
      end
    end

  end

  namespace :chanon do

    task :nude => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/chanon_small"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "female",
          nude: true,
          image: File.open(File.join(dir, item))
        )
      end
    end

  end

  namespace :marcia do

    task :nude => :environment do
      dir = "/Users/tyrionlannister/Desktop/design/drawing/marcia_small"
      Dir.foreach(dir) do |item|
        next if item == '.' or item == '..'
        Pose.create(
          gender: "female",
          nude: true,
          image: File.open(File.join(dir, item))
        )
      end
    end

  end


end