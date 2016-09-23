shared_context 'clear_docs_directory' do
  def remove_docs_directory
    FileUtils.rm_rf("#{Rails.root}/docs")
  end

  before do
    remove_docs_directory
  end
end
