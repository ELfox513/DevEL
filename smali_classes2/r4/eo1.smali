.class public final Lr4/eo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lr4/u50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/u50<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lr4/fo1;


# direct methods
.method public synthetic constructor <init>(Lr4/fo1;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;Lr4/co1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lr4/eo1;->d:Lr4/fo1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/eo1;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lr4/eo1;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/eo1;->c:Lr4/u50;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lr4/eo1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/eo1;->d:Lr4/fo1;

    iget-object p2, p0, Lr4/eo1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lr4/fo1;->f(Ljava/lang/String;Lr4/u50;)V

    return-void

    :cond_0
    iget-object v0, p0, Lr4/eo1;->c:Lr4/u50;

    invoke-interface {v0, p1, p2}, Lr4/u50;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
