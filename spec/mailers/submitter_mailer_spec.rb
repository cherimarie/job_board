require "spec_helper"

describe SubmitterMailer do
  describe "payment_instructions" do
    let(:mail) { SubmitterMailer.payment_instructions }

    it "renders the headers" do
      mail.subject.should eq("Payment instructions")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
