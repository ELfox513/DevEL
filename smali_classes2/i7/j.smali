.class public final synthetic Li7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/k;

.field public final synthetic b:Li7/c;


# direct methods
.method public synthetic constructor <init>(Li7/k;Li7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/j;->a:Li7/k;

    iput-object p2, p0, Li7/j;->b:Li7/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li7/j;->a:Li7/k;

    iget-object v1, p0, Li7/j;->b:Li7/c;

    invoke-static {v0, v1}, Li7/k;->c(Li7/k;Li7/c;)V

    return-void
.end method
