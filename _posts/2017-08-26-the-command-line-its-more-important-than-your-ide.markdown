---
layout: post
title:  "The Command Line"
subtitle: "It's More Important than Your IDE"
date:   2017-08-26 10:00:00 -0500
categories: ruby
post_list_image: /assets/images/command-line.jpg
---


Some platforms provide IDEs so nice that no one would consider using anything else. Open source technologies such as Ruby, Node.js, Go, and others have no killer IDE. In this post I present why the command line should be prioritized over any IDE.

# Platform Concerns

The programming language and platform have a strong influence on IDE selection. Most development teams are going to use Visual Studio when developing .NET applications. Likewise, MacOS or iOS projects are very likely to use Xcode. Eclipse is a free standard in Java. Commercially produced platforms such as .NET or Apple SDKs usually come with IDEs that are provided to help assist with visual application development and to appeal to developers that may want to try the platform.

Teams using non-commercial languages such as Ruby will be drastically different. There isn't a commercial entity directly driving the language and its tools. Developing an IDE takes a considerable amount of resources. Furthermore, Ruby, is dynamically typed, and there isn't a large focus on refactoring tools as there is in Java or .NET. While IDEs like [Rubymine](https://www.jetbrains.com/ruby){:target="_blank"} exist, they don't have a [huge following](https://stackshare.io/stackups/atom-vs-rubymine){:target="_blank"}.

# Open Source is Different

In these largely open-source platforms, the command line reigns supreme. Everything you do in Rails, Rake, Bundler, minus editing files or rendering a page in a browser, is done via commands on the command line. The platform has an inherent standard that any development tool should be executable from the command line.

My statements might upset .NET or Xcode developers as they made considerable leaps over their earlier solutions. The difference exists because the respective IDEs are a developer's first experience with C# or Swift, and it is easy to quickly become dependent upon the build tools built into the IDE.

I can remember moving Java projects from Eclipse based IDE packaging to solely ant based automated builds. Some developers at the time simply didn't want to give up their quick IDE based incremental builds, so we often had to support both until ant and maven plugins became prevalent.

A developer's first experience with Ruby will likely be through the Rails framework, along with Atom, Vim, Sublime Text and other free text editors and the command line. I remember it being hugely intimidating coming from the Java and .NET worlds where large memory hungry IDEs rule the world. I quickly adjusted to the simplicity. On one Rails development team, we had developers using every editor I just mentioned, as well as VS Code, and no one knew the difference. All tooling remained command line and encapsulated away from text editing.

# Keep up with the Community

Open source communities such as Ruby and Node.js move rapidly. When Textmate development stagnated, developers moved to Sublime Text if they could afford it. Developers rapidly moved to editors such as Atom as they filled the void, and developers using Vim likely stayed put and laughed. The plugin development shifted just as quickly. Having the ability to move with the community is imperative to staying current in these rapidly evolving platforms.

# Managers and Tech Leads Take Note

If you are considering trying to streamline and standardize on an IDE for your open source team, please take the platform into consideration. When we sit in front a screen all day, we need to be comfortable and happy with the tools we are using. Taking a Vim developer and trying to push him to Atom or vice versa likely wouldn't work.

In addition, if all the plugin creators move to a given editor, we need to have the choice to move with them.

Instead standardize on concepts such as ensuring all projects can be built, tested, and deployed from the command line. If this goal is met, anyone can work on your code without having to learn a given IDE.

# But We Need Code Analysis
If you introduce a static code analyzer, ensure it works from the command line, and make it work as part of your continuous integration cycle. If plugins exist for most major editors, such as with [RuboCop](https://github.com/bbatsov/rubocop), then there isn't a lot of risk involved.

The same principle applies other code tools such as code formatters. Doing these tasks as pre-commit tasks can ensure they are always done instead of relying on a manual operation in an IDE.

# Command Line First for All Platforms

Regardless of your platform, keep this command-line-first mentality for tools that involve code production. It will provide developers with more options to do the best job possible. It will also ensure someone can build the source without having an IDE on their machine, which is critical in continuous integration.
