require "bank_account"

describe BankAccount do

  it "Should start with a balance of 0" do
    expect(subject.balance).to eq 0
  end

  it "Should accept a deposit and display balance" do
    subject.credit(100)
    expect(subject.balance).to eq 100
  end

  it "Can withdraw money and uptade the balance" do
    subject.credit(500)
    subject.debit(200)
    expect(subject.balance).to eq 300
  end

  it "displays bank statement with date in reverse chronological order" do
    @date_now = "21/09/2016"
    Time.stub_chain(:now, :strftime).and_return(@date_now)
    subject.credit(500)
    subject.debit(200)
    expect(subject.statement).to eq "Date || Credit || Debit || Balance\n21/09/2016 || || 200 || 300\n21/09/2016 || 500 || || 500"
  end

end
