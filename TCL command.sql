-- Step 1: Insert a new report (book issue record)
INSERT INTO REPORTS (user_id, reg_no, book_no, issue_return)
VALUES (201, 3003, 1002, '2025-04-16');

-- Step 2: Optional check or second operation

-- All good? Then commit:
COMMIT;

-- If something goes wrong:
-- ROLLBACK;
