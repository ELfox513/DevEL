.class public final synthetic Ly4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/z;


# direct methods
.method public synthetic constructor <init>(Ly4/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/v;->a:Ly4/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly4/v;->a:Ly4/z;

    new-instance v1, Ly4/u1;

    const/4 v2, 0x4

    const-string v3, "Web view timed out."

    invoke-direct {v1, v2, v3}, Ly4/u1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ly4/z;->g(Ly4/u1;)V

    return-void
.end method
