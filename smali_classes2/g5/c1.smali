.class public final Lg5/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lg5/d2;


# direct methods
.method public constructor <init>(Lg5/d2;J)V
    .locals 0

    iput-object p1, p0, Lg5/c1;->b:Lg5/d2;

    iput-wide p2, p0, Lg5/c1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/c1;->b:Lg5/d2;

    iget-wide v1, p0, Lg5/c1;->a:J

    invoke-static {v0, v1, v2}, Lg5/d2;->f(Lg5/d2;J)V

    return-void
.end method
