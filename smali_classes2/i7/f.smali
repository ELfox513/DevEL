.class public final synthetic Li7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/k;


# direct methods
.method public synthetic constructor <init>(Li7/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/f;->a:Li7/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li7/f;->a:Li7/k;

    invoke-static {v0}, Li7/k;->b(Li7/k;)V

    return-void
.end method
