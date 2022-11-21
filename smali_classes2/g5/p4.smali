.class public final synthetic Lg5/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg5/t4;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg5/t4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/p4;->a:Lg5/t4;

    iput-object p2, p0, Lg5/p4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg5/p4;->a:Lg5/t4;

    iget-object v1, p0, Lg5/p4;->b:Ljava/lang/String;

    new-instance v2, Lb5/vf;

    new-instance v3, Lg5/o4;

    invoke-direct {v3, v0, v1}, Lg5/o4;-><init>(Lg5/t4;Ljava/lang/String;)V

    const-string v0, "internal.appMetadata"

    invoke-direct {v2, v0, v3}, Lb5/vf;-><init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
