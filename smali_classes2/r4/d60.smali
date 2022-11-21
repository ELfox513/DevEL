.class public final synthetic Lr4/d60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/d51;

.field public final b:Ljava/lang/Object;

.field public final c:J


# direct methods
.method public constructor <init>(Lr4/d51;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d60;->a:Lr4/d51;

    iput-object p2, p0, Lr4/d60;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lr4/d60;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lr4/d60;->a:Lr4/d51;

    iget-object v1, p0, Lr4/d60;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lr4/d60;->c:J

    check-cast p1, Lr4/f61;

    invoke-interface {p1, v0, v1, v2, v3}, Lr4/f61;->b(Lr4/d51;Ljava/lang/Object;J)V

    return-void
.end method
