.class public final Lr4/wu2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/xu2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/xu2;

    invoke-direct {v0}, Lr4/xu2;-><init>()V

    sput-object v0, Lr4/wu2;->a:Lr4/xu2;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lr4/wu2;->a:Lr4/xu2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr4/xu2;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lr4/wu2;->a:Lr4/xu2;

    invoke-virtual {v0}, Lr4/xu2;->a()Z

    move-result v0

    return v0
.end method
