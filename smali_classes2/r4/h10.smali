.class public final synthetic Lr4/h10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/d51;

.field public final b:Lr4/e5;

.field public final c:Lr4/iq;


# direct methods
.method public constructor <init>(Lr4/d51;Lr4/e5;Lr4/iq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h10;->a:Lr4/d51;

    iput-object p2, p0, Lr4/h10;->b:Lr4/e5;

    iput-object p3, p0, Lr4/h10;->c:Lr4/iq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/h10;->a:Lr4/d51;

    iget-object v1, p0, Lr4/h10;->b:Lr4/e5;

    iget-object v2, p0, Lr4/h10;->c:Lr4/iq;

    check-cast p1, Lr4/f61;

    invoke-interface {p1, v0, v1, v2}, Lr4/f61;->k(Lr4/d51;Lr4/e5;Lr4/iq;)V

    return-void
.end method
