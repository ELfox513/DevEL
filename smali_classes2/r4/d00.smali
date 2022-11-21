.class public final Lr4/d00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lr4/d00;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lr4/d00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/d00;->a:J

    iput-object p3, p0, Lr4/d00;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/d00;->c:Lr4/d00;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lr4/d00;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/d00;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lr4/d00;
    .locals 1

    iget-object v0, p0, Lr4/d00;->c:Lr4/d00;

    return-object v0
.end method
