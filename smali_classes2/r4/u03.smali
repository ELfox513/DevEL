.class public final Lr4/u03;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lr4/t03;
    .locals 2

    new-instance v0, Lr4/t03;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/t03;-><init>(Ljava/lang/String;Lr4/r03;)V

    return-object v0
.end method
