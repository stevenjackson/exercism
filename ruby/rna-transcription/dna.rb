class DNA < String
  def to_rna
    self.gsub(/T/, 'U')
  end
end
