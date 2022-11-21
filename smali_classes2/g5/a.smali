.class public final Lg5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic d:Lg5/d2;


# direct methods
.method public constructor <init>(Lg5/d2;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lg5/a;->d:Lg5/d2;

    iput-object p2, p0, Lg5/a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lg5/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/a;->d:Lg5/d2;

    iget-object v1, p0, Lg5/a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lg5/a;->b:J

    invoke-static {v0, v1, v2, v3}, Lg5/d2;->d(Lg5/d2;Ljava/lang/String;J)V

    return-void
.end method
