.class public final synthetic Lb5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lb5/c1;


# direct methods
.method public synthetic constructor <init>(Lb5/c1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/a;->a:Lb5/c1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb5/a;->a:Lb5/c1;

    invoke-virtual {v0}, Lb5/c1;->b()Lb5/j;

    move-result-object v0

    return-object v0
.end method
