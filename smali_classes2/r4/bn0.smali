.class public final Lr4/bn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# instance fields
.field public final synthetic a:Lr4/zm0;

.field public final synthetic b:Lr4/xm0;


# direct methods
.method public constructor <init>(Lr4/cn0;Lr4/zm0;Lr4/xm0;)V
    .locals 0

    iput-object p2, p0, Lr4/bn0;->a:Lr4/zm0;

    iput-object p3, p0, Lr4/bn0;->b:Lr4/xm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lr4/bn0;->b:Lr4/xm0;

    invoke-interface {p1}, Lr4/xm0;->zza()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/bn0;->a:Lr4/zm0;

    invoke-interface {v0, p1}, Lr4/zm0;->a(Ljava/lang/Object;)V

    return-void
.end method
