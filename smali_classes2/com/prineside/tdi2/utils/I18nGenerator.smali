.class public Lcom/prineside/tdi2/utils/I18nGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ".java"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ".lua"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/prineside/tdi2/utils/I18nGenerator;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "../src"

    aput-object v2, v1, v3

    const-string v2, "scripts"

    aput-object v2, v1, v4

    const-string v2, "../../core/src"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "../../desktop/src"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "../../ios/src"

    aput-object v2, v1, v0

    sput-object v1, Lcom/prineside/tdi2/utils/I18nGenerator;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final b(Ljava/io/File;[Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/prineside/tdi2/utils/I18nGenerator;->b(Ljava/io/File;[Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to search in \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', it\'s not a file or dir"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "I18nGenerator"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public run()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "i18n/MainBundle.properties"

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/utils/I18nGenerator;->b:[Ljava/lang/String;

    array-length v4, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v0, v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/prineside/tdi2/utils/I18nGenerator;->a:[Ljava/lang/String;

    invoke-virtual {v1, v8, v7, v3}, Lcom/prineside/tdi2/utils/I18nGenerator;->b(Ljava/io/File;[Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v6, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    const-string v0, "i18n[()]*([.:])(get|format)\\(([^)]+)\\)((?!//).)*(//)*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v0, "i18n[()]*([.:])(get|format)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v11, ","

    const-string v12, "I18nGenerator"

    const-string v13, "\""

    if-ge v9, v0, :cond_e

    :try_start_0
    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v15, Ljava/util/Scanner;

    invoke-direct {v15, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v15}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    :goto_3
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    const/16 v19, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v20
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v21, v3

    const-string v3, ":"

    if-eqz v20, :cond_2

    if-eqz v19, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - multiple i18n calls"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v2

    goto/16 :goto_7

    :cond_1
    move-object/from16 v3, v21

    const/16 v19, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v19, v5

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v7

    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v22, v8

    const/4 v8, 0x6

    :try_start_3
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v10

    const-string v10, "("

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v8, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v1, v8, v13}, Lcom/prineside/tdi2/utils/I18nGenerator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    aget-object v3, v5, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - do not use \'(\' inside i18n.get() or i18n.format() to properly generate i18n lists"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v24, v2

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1, v7, v13}, Lcom/prineside/tdi2/utils/I18nGenerator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v24, v2

    const/4 v2, 0x2

    if-ne v10, v2, :cond_6

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    move-object/from16 v24, v2

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "format"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v7, v2, v5

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    aget-object v7, v2, v5

    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    aget-object v7, v2, v5

    invoke-virtual {v1, v7, v13}, Lcom/prineside/tdi2/utils/I18nGenerator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - skipping format TODO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - no comment found for runtime generated alias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v2, "_ignored"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - warning: comment already used in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move-object/from16 v2, v24

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    goto :goto_8

    :cond_c
    move-object/from16 v24, v2

    move-object/from16 v21, v3

    :goto_7
    move-object/from16 v18, v7

    move-object/from16 v22, v8

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    move-object/from16 v2, v24

    goto/16 :goto_2

    :cond_d
    move-object/from16 v24, v2

    move-object/from16 v21, v3

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    invoke-virtual {v15}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v21, v3

    :goto_8
    move-object/from16 v18, v7

    :goto_9
    move-object/from16 v22, v8

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    move-object/from16 v2, v24

    goto/16 :goto_1

    :cond_e
    move-object/from16 v24, v2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v2, "ability_name_ + AbilityType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v3, :cond_f

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ability_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_f
    const-string v2, "ability_description_ + AbilityType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v3, :cond_10

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ability_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_10
    const-string v2, "achievement_name_ + AchievementType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v3, :cond_11

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "achievement_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_11
    const-string v2, "achievement_description_ + AchievementType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v3, :cond_12

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "achievement_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_12
    const-string v2, "aim_strategy_ + Tower.AimStrategy"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v3, :cond_13

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aim_strategy_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_13
    const-string v2, "boss_tile_name_ + BossTileType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->values:[Lcom/prineside/tdi2/enums/BossTileType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_14

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boss_tile_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_14
    const-string v2, "case_key_title_ + CaseType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v3, :cond_15

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "case_key_title_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_15
    const-string v2, "continue_game_status_ + GameStateSystem.ContinueGameStatus"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->values:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v3, :cond_16

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continue_game_status_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_16
    const-string v2, "difficulty_mode_ + DifficultyMode"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->values:[Lcom/prineside/tdi2/enums/DifficultyMode;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v3, :cond_17

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "difficulty_mode_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_17
    const-string v2, "enemy_name_ + EnemyType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v3, :cond_18

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enemy_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_18
    const-string v2, "enemy_description_ + EnemyType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v3, :cond_19

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enemy_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_19
    const-string v2, "gv_title_ + GameValueType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v3, :cond_1a

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gv_title_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_1a
    const-string v2, "game_over_reason_ + GameOverReason"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->values()[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v3, :cond_1b

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "game_over_reason_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_1b
    const-string v2, "gate_name_ + GateType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v3, :cond_1c

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gate_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_1c
    const-string v2, "gate_description_ + GateType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v3, :cond_1d

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gate_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_1d
    const-string v2, "hotkey_ + HotkeyAction"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v3, :cond_1e

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hotkey_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_1e
    const-string v2, "invalid_map_format_hint_ + Reason"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->values()[Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v3, :cond_1f

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid_map_format_hint_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_1f
    const-string v2, "item_title_CASE_ + CaseType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v3, :cond_20

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_title_CASE_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_20
    const-string v2, "item_description_CASE_ + CaseType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    sget-object v2, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v3, :cond_21

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_description_CASE_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_21
    const-string v2, "item_category_ + ItemCategoryType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemCategoryType;->values()[Lcom/prineside/tdi2/enums/ItemCategoryType;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v3, :cond_22

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_category_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_22
    const-string v2, "item_subcategory_ + ItemSubcategoryType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->values()[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v3, :cond_23

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_subcategory_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_23
    const-string v2, "inventory_tab_name_ + TabType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;->values()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v3, :cond_24

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inventory_tab_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_24
    const-string v2, "levels.json stage titles"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevelStage;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevelStage;->titleAlias:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_22

    :cond_25
    const-string v2, "measure_units_ + units"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;->values:[Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v3, :cond_26

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "measure_units_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_26
    const-string v2, "miner_name_ + MinerType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_24
    if-ge v7, v3, :cond_27

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "miner_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_27
    const-string v2, "modifier_name_ + ModifierType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v3, :cond_28

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifier_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_28
    const-string v2, "modifier_description_ + ModifierType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v3, :cond_29

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifier_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_29
    const-string v2, "modifier_simple_description_ + ModifierType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_27
    if-ge v7, v3, :cond_2a

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifier_simple_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_2a
    const-string v2, "rarity_ + RarityType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v3, :cond_2b

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rarity_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_2b
    const-string v2, "research_title_ + ResearchCategoryType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchCategoryType;->values:[Lcom/prineside/tdi2/enums/ResearchCategoryType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v3, :cond_2c

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "research_title_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_2c
    const-string v2, "research_description_ + ResearchCategoryType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/prineside/tdi2/enums/ResearchCategoryType;->values:[Lcom/prineside/tdi2/enums/ResearchCategoryType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v3, :cond_2d

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "research_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_2d
    const-string v2, "resource_name_ + ResourceType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v3, :cond_2e

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_2e
    const-string v2, "levels.json SCRIPTED quests"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_30
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isScripted()Z

    move-result v7

    if-eqz v7, :cond_30

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scriptedTitle:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_31
    const-string v2, "space_tile_bonus_ + SpaceTileBonusType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    sget-object v2, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_2d
    if-ge v7, v3, :cond_32

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "space_tile_bonus_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_32
    const-string v2, "statistics_ + StatisticsType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_33

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v3, :cond_33

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statistics_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_33
    const-string v2, "start_research_fail_reason_ + StartResearchFailReason"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_34

    sget-object v2, Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;->values:[Lcom/prineside/tdi2/managers/ResearchManager$StartResearchFailReason;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v3, :cond_34

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start_research_fail_reason_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_34
    const-string v2, "tower_name_ + TowerType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_35

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v3, :cond_35

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tower_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_35
    const-string v2, "tower_description_ + TowerType"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_36

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_31
    if-ge v7, v3, :cond_36

    aget-object v5, v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tower_description_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_36
    const-string v2, "tower_ability_TOWER_ABILITY_name"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_38

    const-string v2, "tower_ability_TOWER_ABILITY_description"

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v3, :cond_38

    aget-object v5, v2, v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityNames()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_33
    const/4 v10, 0x6

    if-ge v9, v10, :cond_37

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tower_ability_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v8, v9

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_name"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_description"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    goto :goto_33

    :cond_37
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    goto :goto_32

    :cond_38
    const-string v1, "tower_unique_stat_description_ + TowerType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v2, :cond_39

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tower_unique_stat_description_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_39
    const-string v1, "tower_stat_ + TowerStatType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v2, :cond_3a

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tower_stat_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_3a
    const-string v1, "tr_title_ + TrophyType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v2, :cond_3b

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tr_title_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_3b
    const-string v1, "triggered_action_ + TriggeredActionType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/prineside/tdi2/enums/TriggeredActionType;->values:[Lcom/prineside/tdi2/enums/TriggeredActionType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_37
    if-ge v7, v2, :cond_3c

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "triggered_action_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_3c
    const-string v1, "tile_name_ + TileType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->values:[Lcom/prineside/tdi2/enums/TileType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_38
    if-ge v7, v2, :cond_3d

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tile_name_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_3d
    const-string v1, "tile_description_ + TileType"

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->values:[Lcom/prineside/tdi2/enums/TileType;

    array-length v2, v1

    const/4 v7, 0x0

    :goto_39
    if-ge v7, v2, :cond_3e

    aget-object v3, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tile_description_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_3e
    const-string v1, "I18nGenerator[\\s]*\\{([^\\}]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :cond_40
    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/Tile;

    iget-object v9, v8, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v10, Lcom/prineside/tdi2/enums/TileType;->SCRIPT:Lcom/prineside/tdi2/enums/TileType;

    if-ne v9, v10, :cond_40

    check-cast v8, Lcom/prineside/tdi2/tiles/ScriptTile;

    invoke-virtual {v8}, Lcom/prineside/tdi2/tiles/ScriptTile;->getScript()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_40

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_42

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_3b
    if-ge v10, v9, :cond_40

    aget-object v14, v8, v10

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_41

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    :cond_42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nothing found in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_43
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runtime generated alias not implemented in I18nGenerator: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_44
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    const/4 v7, 0x0

    :goto_3d
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v3, :cond_45

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_45
    const/4 v7, 0x0

    :goto_3e
    iget v3, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v3, :cond_47

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_47
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->sort()V

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    :try_start_5
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    const/4 v7, 0x0

    :goto_3f
    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v1, :cond_48

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_48
    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    new-instance v4, Ljava/io/File;

    move-object/from16 v5, v24

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    const-string v6, "\\[@([a-zA-Z0-9_-]+)]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v10, "\n"

    if-eqz v9, :cond_4d

    :try_start_6
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "\\n"

    invoke-virtual {v11, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4c

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    :cond_49
    :goto_41
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_4a

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v16

    if-nez v16, :cond_49

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_41

    :cond_4a
    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4b

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_40

    :cond_4b
    invoke-virtual {v0, v9, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_4c
    const/4 v13, 0x1

    const/4 v15, 0x0

    goto :goto_40

    :cond_4d
    const/4 v15, 0x0

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "#B184\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_42
    iget v6, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const-string v8, "="

    if-ge v5, v6, :cond_4f

    :try_start_7
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4e

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_4f
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v2, 0x0

    :goto_43
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_52

    const/4 v5, 0x0

    :goto_44
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_51

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_45

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_51
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_52
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v2, 0x0

    :goto_46
    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_54

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_54
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_56

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->sort()V

    const/4 v0, 0x0

    :goto_47
    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_56

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_55
    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_56
    iget v0, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_58

    const-string v0, "# Obsolete\n"

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_48
    iget v0, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v0, :cond_58

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_57
    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_58
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_49

    :catch_5
    move-exception v0

    const-string v1, "Failed to handle MainBundle.properties"

    invoke-static {v12, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    const-string v0, "Done"

    invoke-static {v12, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
