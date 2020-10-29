class TitleValidator < ActiveModel::Validations
    def validate(record)
        t = ["Won't Believe", "Secret", "Top ", "Guess"]
        if t.none? {|p| p.match title}
            errors.add(:title, "must be clickbait")
        end

    end
end