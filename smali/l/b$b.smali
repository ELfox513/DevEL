.class public Ll/b$b;
.super Ll/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ll/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll/b$c;Ll/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b$c<",
            "TK;TV;>;",
            "Ll/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ll/b$e;-><init>(Ll/b$c;Ll/b$c;)V

    return-void
.end method


# virtual methods
.method public b(Ll/b$c;)Ll/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b$c<",
            "TK;TV;>;)",
            "Ll/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Ll/b$c;->d:Ll/b$c;

    return-object p1
.end method

.method public c(Ll/b$c;)Ll/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b$c<",
            "TK;TV;>;)",
            "Ll/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Ll/b$c;->k:Ll/b$c;

    return-object p1
.end method
