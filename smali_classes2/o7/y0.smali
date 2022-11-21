.class public final Lo7/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/x0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo7/y;

    sget-object v0, Lo7/y$f;->k:Lo7/y$f;

    invoke-virtual {p1, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
