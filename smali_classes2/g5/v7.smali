.class public final Lg5/v7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/w7;


# direct methods
.method public constructor <init>(Lg5/w7;)V
    .locals 0

    iput-object p1, p0, Lg5/v7;->a:Lg5/w7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/v7;->a:Lg5/w7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg5/w7;->q(Lg5/w7;Lg5/p7;)V

    return-void
.end method
