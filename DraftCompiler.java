import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class DraftCompiler {
    public static void main(String[] args) throws Exception {
        // create a CharStream that reads from standard input
        ANTLRInputStream input = new ANTLRInputStream(System.in);
        // create a lexer that feeds off of input CharStream
        SystemRDLLexer lexer = new SystemRDLLexer(input);
        // create a buffer of tokens pulled from the lexer
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        // create a parser that feeds off the tokens buffer
        SystemRDLParser parser = new SystemRDLParser(tokens);
        ParseTree tree = parser.root(); // begin parsing at init rule
        System.out.println(tree.toStringTree(parser)); // print LISP-style tree
    }
}


