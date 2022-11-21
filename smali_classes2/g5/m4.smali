.class public final synthetic Lg5/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg5/t4;


# direct methods
.method public synthetic constructor <init>(Lg5/t4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/m4;->a:Lg5/t4;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/m4;->a:Lg5/t4;

    new-instance v1, Lb5/uf;

    iget-object v0, v0, Lg5/t4;->j:Lb5/sf;

    invoke-direct {v1, v0}, Lb5/uf;-><init>(Lb5/sf;)V

    return-object v1
.end method
