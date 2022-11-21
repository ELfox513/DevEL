.class public final synthetic Lr4/s31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/w31;

.field public final b:Lr4/t73;

.field public final c:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/w31;Lr4/t73;Lr4/h83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s31;->a:Lr4/w31;

    iput-object p2, p0, Lr4/s31;->b:Lr4/t73;

    iput-object p3, p0, Lr4/s31;->c:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/s31;->a:Lr4/w31;

    iget-object v1, p0, Lr4/s31;->b:Lr4/t73;

    iget-object v2, p0, Lr4/s31;->c:Lr4/h83;

    check-cast p1, Lr4/i31;

    invoke-virtual {v0, v1, v2, p1}, Lr4/w31;->f(Lr4/t73;Lr4/h83;Lr4/i31;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
