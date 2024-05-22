import openai

def test_openai_api_key(api_key):
    openai.api_key = api_key

    try:
        # Example request to the completion endpoint
        response = openai.Completion.create(
            engine="davinci",
            prompt="Once upon a time",
            max_tokens=5
        )
        print("API key is valid!")
    except openai.error.AuthenticationError as err:
        print("Error:", err)
        print("API key is invalid or unauthorized.")

# Replace "YOUR_OPENAI_API_KEY" with your actual OpenAI API key
test_openai_api_key("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")
