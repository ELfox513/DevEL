.class public final synthetic Ly4/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/o0;


# direct methods
.method public synthetic constructor <init>(Ly4/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/m0;->a:Ly4/o0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly4/m0;->a:Ly4/o0;

    invoke-virtual {v0}, Ly4/o0;->b()V

    return-void
.end method
