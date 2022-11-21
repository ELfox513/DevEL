.class public final Lg5/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic k:J

.field public final synthetic p:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lg5/o6;->p:Lg5/i7;

    iput-object p2, p0, Lg5/o6;->a:Ljava/lang/String;

    iput-object p3, p0, Lg5/o6;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/o6;->d:Ljava/lang/Object;

    iput-wide p5, p0, Lg5/o6;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg5/o6;->p:Lg5/i7;

    iget-object v1, p0, Lg5/o6;->a:Ljava/lang/String;

    iget-object v2, p0, Lg5/o6;->b:Ljava/lang/String;

    iget-object v3, p0, Lg5/o6;->d:Ljava/lang/Object;

    iget-wide v4, p0, Lg5/o6;->k:J

    invoke-virtual/range {v0 .. v5}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
