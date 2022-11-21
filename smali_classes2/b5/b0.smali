.class public final synthetic Lb5/b0;
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

    iput-object p1, p0, Lb5/b0;->a:Lb5/c1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb5/b0;->a:Lb5/c1;

    new-instance v1, Lb5/y8;

    iget-object v0, v0, Lb5/c1;->c:Lb5/c;

    invoke-direct {v1, v0}, Lb5/y8;-><init>(Lb5/c;)V

    return-object v1
.end method
