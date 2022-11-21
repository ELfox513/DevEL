.class public abstract enum Lj7/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj7/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj7/g;

.field public static final enum d:Lj7/g;

.field public static final enum k:Lj7/g;

.field public static final enum p:Lj7/g;

.field public static final enum q:Lj7/g;

.field public static final synthetic r:[Lj7/g;


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lj7/g$a;

    const-string v1, "TERABYTES"

    const/4 v2, 0x0

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lj7/g$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lj7/g;->b:Lj7/g;

    new-instance v1, Lj7/g$b;

    const-string v3, "GIGABYTES"

    const/4 v4, 0x1

    const-wide/32 v5, 0x40000000

    invoke-direct {v1, v3, v4, v5, v6}, Lj7/g$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lj7/g;->d:Lj7/g;

    new-instance v3, Lj7/g$c;

    const-string v5, "MEGABYTES"

    const/4 v6, 0x2

    const-wide/32 v7, 0x100000

    invoke-direct {v3, v5, v6, v7, v8}, Lj7/g$c;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lj7/g;->k:Lj7/g;

    new-instance v5, Lj7/g$d;

    const-string v7, "KILOBYTES"

    const/4 v8, 0x3

    const-wide/16 v9, 0x400

    invoke-direct {v5, v7, v8, v9, v10}, Lj7/g$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lj7/g;->p:Lj7/g;

    new-instance v7, Lj7/g$e;

    const-string v9, "BYTES"

    const/4 v10, 0x4

    const-wide/16 v11, 0x1

    invoke-direct {v7, v9, v10, v11, v12}, Lj7/g$e;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lj7/g;->q:Lj7/g;

    const/4 v9, 0x5

    new-array v9, v9, [Lj7/g;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lj7/g;->r:[Lj7/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lj7/g;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJLj7/g$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj7/g;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj7/g;
    .locals 1

    const-class v0, Lj7/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj7/g;

    return-object p0
.end method

.method public static values()[Lj7/g;
    .locals 1

    sget-object v0, Lj7/g;->r:[Lj7/g;

    invoke-virtual {v0}, [Lj7/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj7/g;

    return-object v0
.end method


# virtual methods
.method public c(J)J
    .locals 2

    iget-wide v0, p0, Lj7/g;->a:J

    mul-long p1, p1, v0

    sget-object v0, Lj7/g;->p:Lj7/g;

    iget-wide v0, v0, Lj7/g;->a:J

    div-long/2addr p1, v0

    return-wide p1
.end method
