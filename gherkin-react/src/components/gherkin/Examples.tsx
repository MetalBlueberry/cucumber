import * as React from "react";
import {Typography} from "@material-ui/core";
import Keyword from "./Keyword";
import ExamplesTable from "./ExamplesTable";
import {io} from "cucumber-messages";
import Tags from "./Tags";
import Description from "./Description";
import IExamples = io.cucumber.messages.IExamples;

interface IExamplesProps {
    examples?: IExamples | null
}

const Examples: React.SFC<IExamplesProps> = ({examples}) => {
    if (!examples) {
        return null
    }
    return (
        <section>
            <Tags tags={examples.tags}/>
            <Typography variant={"subheading"}>
                <Keyword>{examples.keyword}</Keyword>: <span>{examples.name}</span>
            </Typography>
            <Description description={examples.description}/>
            <ExamplesTable
                tableHeader={examples.tableHeader}
                tableBody={examples.tableBody}
            />
        </section>
    )
}

export default Examples
