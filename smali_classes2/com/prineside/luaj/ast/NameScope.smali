.class public Lcom/prineside/luaj/ast/NameScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public functionNestingCount:I

.field public final namedVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/prineside/luaj/ast/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public final outerScope:Lcom/prineside/luaj/ast/NameScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/prineside/luaj/ast/NameScope;->a:Ljava/util/Set;

    const/16 v0, 0x15

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "and"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "break"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "do"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "else"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "elseif"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "end"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "false"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "for"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "function"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "if"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "in"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "local"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "nil"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "not"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "or"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "repeat"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "return"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "then"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "true"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "until"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "while"

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v2, Lcom/prineside/luaj/ast/NameScope;->a:Ljava/util/Set;

    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameScope;->outerScope:Lcom/prineside/luaj/ast/NameScope;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/ast/NameScope;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    iput-object p1, p0, Lcom/prineside/luaj/ast/NameScope;->outerScope:Lcom/prineside/luaj/ast/NameScope;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/prineside/luaj/ast/NameScope;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name is a keyword: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public define(Ljava/lang/String;)Lcom/prineside/luaj/ast/Variable;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/NameScope;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/luaj/ast/Variable;

    invoke-direct {v0, p1, p0}, Lcom/prineside/luaj/ast/Variable;-><init>(Ljava/lang/String;Lcom/prineside/luaj/ast/NameScope;)V

    iget-object v1, p0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public find(Ljava/lang/String;)Lcom/prineside/luaj/ast/Variable;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/NameScope;->a(Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/ast/Variable;

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/prineside/luaj/ast/NameScope;->outerScope:Lcom/prineside/luaj/ast/NameScope;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/luaj/ast/Variable;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/ast/Variable;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/luaj/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
