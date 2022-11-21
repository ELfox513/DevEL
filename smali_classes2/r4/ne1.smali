.class public final synthetic Lr4/ne1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vl1;

.field public final b:J


# direct methods
.method public constructor <init>(Lr4/vl1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ne1;->a:Lr4/vl1;

    iput-wide p2, p0, Lr4/ne1;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/ne1;->a:Lr4/vl1;

    iget-wide v1, p0, Lr4/ne1;->b:J

    invoke-virtual {v0, v1, v2}, Lr4/vl1;->q(J)V

    return-void
.end method
