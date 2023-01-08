package masters.staticanalysistools.aggregator.exception;

import java.net.URI;

public class ParallelRequestException extends RuntimeException {

    private static final String MESSAGE = "Request not possible for URI: %s";

    public ParallelRequestException(URI uri, Exception coreException) {
        super(String.format(MESSAGE, uri), coreException);
    }

}